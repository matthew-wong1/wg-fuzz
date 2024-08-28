struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    global0 = arg_1;
    var var_0 = Struct_1(!select(vec3<bool>(true, u_input.b > u_input.b, true), vec3<bool>(true, true, arg_0.x > -701f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), any(!vec3<bool>(true, true, select(true, false, true))), global0.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(max(448f, 1443f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(f32(-1f) * -645f)))));
    let var_1 = vec4<bool>(all(var_0.a.xx), false | var_0.a.x, countOneBits(_wgslsmith_clamp_u32(15621u, u_input.b, u_input.b) << (1u % 32u)) > 1u, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1551f, var_0.d.x, var_0.d.x)), vec3<f32>(arg_0.x, -512f, 118f))))), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-413f + arg_0.x), var_0.d.x), 766f != arg_0.x));
    var var_3 = Struct_1(var_0.a, var_1.x, _wgslsmith_div_i32(countOneBits(~arg_1.x), _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.a.x, var_0.c), -(~var_0.c))), _wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(vec2<f32>(525f, _wgslsmith_f_op_f32(step(735f, var_0.d.x))) * vec2<f32>(-297f, -315f))));
    return !(!var_1.xyw);
}

fn func_2() -> bool {
    var var_0 = countOneBits(-1i);
    let var_1 = -928f;
    var var_2 = Struct_1(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), false, any(func_3(vec2<f32>(var_1, 1213f), abs(vec2<i32>(u_input.a.x, 28007i))))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, var_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 567f)))), vec2<i32>(-global0.x, global0.x)).x, -1i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1)), -453f))));
    let var_3 = firstTrailingBit(firstTrailingBit(_wgslsmith_mult_i32(var_2.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, var_2.c, -1i)))));
    var_2 = Struct_1(!vec3<bool>(any(var_2.a), true | var_2.b, var_2.a.x), true, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), var_2.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 127f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d)))));
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    global0 = vec2<i32>(u_input.a.x, -5962i);
    let var_0 = Struct_1(vec3<bool>(true, !func_2(), any(vec4<bool>(arg_1, any(vec4<bool>(arg_1, arg_1, false, true)), true, any(vec3<bool>(arg_1, true, arg_1))))), false, 25938i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, 495f)))));
    global0 = vec2<i32>(u_input.a.x, ~(-2147483647i));
    let var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, ~u_input.b), u_input.b));
    var var_2 = Struct_2(_wgslsmith_div_f32(1780f, -258f), vec3<bool>(func_2(), any(vec4<bool>(any(var_0.a.zy), arg_1, -1i >= var_0.c, true)), true), var_0, var_0.d.x);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = ~75515u;
    var_0 = ~_wgslsmith_mult_u32(4294967295u, u_input.b) ^ 4294967295u;
    var var_1 = !(!(!(!select(true, false, true))));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-5952i, -_wgslsmith_clamp_i32(22606i, u_input.a.x, 1i)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a | vec2<i32>(56749i, 0i)), vec2<i32>(~global0.x, func_1(vec2<u32>(0u, u_input.b), true)), vec2<i32>(-global0.x, u_input.a.x))), vec2<f32>(-1022f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-128f)))))));
}

