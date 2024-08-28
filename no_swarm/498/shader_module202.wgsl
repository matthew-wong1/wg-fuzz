struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, 1111f, -1022f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1672f, 778f, -1186f, 495f) + vec4<f32>(-351f, 1077f, 1888f, 1000f))))));
    let var_1 = u_input.e;
    var var_2 = u_input.a.x;
    var_2 = ~_wgslsmith_mod_u32(51408u, 4294967295u);
    var var_3 = select(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, false);
    return !any(vec4<bool>(true, true, -var_1 < _wgslsmith_sub_i32(u_input.c.x, -38047i), true));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>) -> bool {
    var var_0 = !vec4<bool>(!(!any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), true, !(!select(false, false, false)), false);
    var var_1 = -1354f;
    var_0 = !(!(!vec4<bool>(true, func_1(), false, var_0.x)));
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-104f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, -501f))))), -243f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-351f - _wgslsmith_f_op_f32(step(1350f, -103f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), -1000f));
    var var_3 = reverseBits(vec2<u32>(u_input.a.x, ~(~abs(u_input.b))));
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = 1f;
    var var_1 = func_3(true, vec3<bool>(arg_3.b.c, func_1(), all(arg_0.ww)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, _wgslsmith_clamp_i32(u_input.e, arg_1.c.a, 23974i), arg_3.c.d.x), vec3<i32>(54426i, -44776i, i32(-1i) * -56148i)), ~_wgslsmith_div_i32(arg_1.c.b, u_input.c.x ^ 0i), -33372i, arg_3.b.d.x));
    var_1 = u_input.c.x > _wgslsmith_div_i32(arg_1.c.b, _wgslsmith_div_i32(~(~(-16071i)), arg_1.b.b));
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1947f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1876f)))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-848f - arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 438f)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 204f;
    let var_1 = !(!any(vec3<bool>(func_1(), all(vec2<bool>(false, false)), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(523f, -194f, -477f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, -2055f, 919f) * vec3<f32>(1000f, 1000f, -333f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-719f, 819f, -1000f) + vec3<f32>(592f, -1355f, -2172f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, -1571f, 811f))), vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, var_1, var_1, var_1), Struct_2(u_input.e, Struct_1(79939i, u_input.c.x, false, vec2<i32>(u_input.e, u_input.e)), Struct_1(-9758i, u_input.e, var_1, u_input.c)), 1808f, Struct_2(u_input.e, Struct_1(u_input.e, u_input.c.x, true, u_input.c), Struct_1(u_input.e, u_input.e, true, vec2<i32>(11377i, u_input.c.x))))), -534f, _wgslsmith_f_op_f32(abs(827f))), !vec3<bool>(var_1, true, var_1)))));
    let var_3 = Struct_1(~(~u_input.e), u_input.c.x, any(!vec4<bool>(!var_1, 102217u >= u_input.b, true, !var_1)), _wgslsmith_div_vec2_i32((vec2<i32>(u_input.c.x, -14279i) & vec2<i32>(38086i, u_input.c.x)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(7568u, u_input.b), ~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), -u_input.c));
    var var_4 = var_3;
    let var_5 = Struct_2(u_input.e, var_3, var_3);
    var_0 = _wgslsmith_f_op_f32(-var_2.x);
    var var_6 = Struct_1(var_5.a, ~_wgslsmith_div_i32(var_5.b.b >> (~u_input.b % 32u), var_5.c.a), true, ~var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_3.d.x, var_6.a), 1i, ~(-_wgslsmith_sub_i32(var_4.d.x << (11333u % 32u), ~(-9831i))), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_5.b.b, 20104i), -(~var_6.d.x | 65581i)));
}

