struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(arg_1.a), ~0u, _wgslsmith_mod_u32(arg_1.a, 63993u)), u_input.a.x), select(!vec4<bool>(true, arg_1.c.x || false, arg_1.a == arg_1.a, any(vec4<bool>(arg_1.b.x, true, false, false))), arg_1.b, arg_1.c.x), select(vec2<bool>(_wgslsmith_div_f32(arg_0.x, arg_0.x) > arg_0.x, !select(arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(vec2<bool>(any(vec4<bool>(false, arg_1.c.x, true, true)), arg_1.b.x), select(arg_1.c, arg_1.b.yy, arg_1.b.zw), arg_1.b.zy), select(!(!arg_1.b.zy), select(!vec2<bool>(arg_1.c.x, false), select(vec2<bool>(true, false), vec2<bool>(arg_1.b.x, true), vec2<bool>(arg_1.b.x, false)), select(vec2<bool>(false, arg_1.c.x), arg_1.c, arg_1.b.x)), arg_1.c.x)));
    var var_1 = abs(~u_input.a);
    let var_2 = u_input.b.x;
    var_1 = vec2<u32>(reverseBits(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, 0u, var_0.a), vec4<u32>(1u, var_0.a, var_0.a, arg_1.a)))), abs(~_wgslsmith_mult_u32(abs(27161u), reverseBits(var_1.x))));
    let var_3 = vec4<f32>(-157f, arg_0.x, 422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-185f, arg_0.x)))));
    return ~var_1.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(abs(u_input.a.x), select(vec4<bool>(false, true, true, _wgslsmith_clamp_i32(-1i, u_input.b.x, -19592i) <= -u_input.b.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false))), vec4<bool>(!(24647i == u_input.b.x), true, (u_input.b.x <= u_input.b.x) && any(vec2<bool>(false, false)), true)), select(!vec2<bool>(all(vec4<bool>(false, false, false, true)), true), vec2<bool>(all(vec4<bool>(false, true, true, false)), true), any(vec2<bool>(true, true))));
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(1071f * -435f);
    var_0 = _wgslsmith_sub_u32(func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(125f, -2206f, 1000f))))))), var_1), _wgslsmith_sub_u32(u_input.a.x, abs(_wgslsmith_mult_u32(~55570u, var_1.a & var_1.a))));
    return var_1.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = func_2();
    let var_1 = Struct_1(firstLeadingBit(arg_0.a) >> (5512u % 32u), !arg_0.b, !(!(!(!vec2<bool>(arg_0.b.x, arg_1.c.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1457f - -1441f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(965f, -1467f, arg_0.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(f32(-1f) * -1376f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -222f))))));
    var var_3 = vec4<f32>(-1033f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-var_2.x), -1330f);
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(var_3.xz));
    return func_2().x;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> f32 {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(~u_input.a.x, vec4<bool>(all(arg_2), true | !(!arg_2.x), arg_2.x, func_1(Struct_1(func_3(vec3<f32>(-920f, -717f, -2748f), Struct_1(u_input.a.x, vec4<bool>(false, arg_2.x, false, arg_2.x), vec2<bool>(true, arg_2.x))), !vec4<bool>(true, true, false, arg_2.x), arg_2), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 66155u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 27742u, 101627u, u_input.a.x)), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), !arg_2))), vec2<bool>(arg_2.x, arg_2.x));
    var var_2 = Struct_1(u_input.a.x, !select(vec4<bool>(true, any(vec4<bool>(false, arg_2.x, true, arg_2.x)), arg_2.x, var_1.c.x || var_1.b.x), select(func_2(), !var_1.b, false), select(var_1.c.x, true, true)), select(var_1.b.xw, vec2<bool>(var_1.c.x, func_2().x), arg_2.x));
    let var_3 = true;
    var_0 = firstTrailingBit(-2147483647i);
    return _wgslsmith_f_op_f32(-arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1511f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2686f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1135f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1272f, -831f)))))) + _wgslsmith_f_op_f32(func_4(-(9731i >> (u_input.a.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1470f * 166f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-180f)) + _wgslsmith_f_op_f32(1000f - -213f)), _wgslsmith_f_op_f32(f32(-1f) * -288f)), !vec2<bool>(func_1(Struct_1(4294967295u, vec4<bool>(true, true, true, false), vec2<bool>(false, true)), Struct_1(79248u, vec4<bool>(true, true, true, false), vec2<bool>(false, false))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1816f, -1661f, -132f) + vec3<f32>(151f, 364f, 625f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-739f, -1287f, -1116f))))))));
    var_0 = var_1;
    let var_2 = !vec4<bool>(true, any(vec2<bool>(true, true)), false, _wgslsmith_f_op_f32(select(1600f, _wgslsmith_f_op_f32(f32(-1f) * -2580f), var_1 > 142f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))));
    var_0 = -569f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_4(0i, vec3<f32>(-142f, 458f, 604f), vec2<bool>(var_2.x, var_2.x), vec3<f32>(-568f, -1136f, var_1)))), var_1, false))) * var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, -(~u_input.b.x), u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i))), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 1i, 22152i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, -15983i), vec3<i32>(-19999i, 1i, -22398i))), firstTrailingBit(vec3<i32>(-21409i, i32(-1i) * -2147483647i, 18461i ^ u_input.b.x))), _wgslsmith_f_op_f32(-var_1), vec3<f32>(var_1, _wgslsmith_f_op_f32(-2581f - var_1), -1377f));
}

