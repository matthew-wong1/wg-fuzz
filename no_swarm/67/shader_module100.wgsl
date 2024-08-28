struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = !(!(!all(vec3<bool>(arg_2.x, true, true))));
    let var_1 = -1554f;
    var var_2 = ~vec3<u32>(~3596u, 92407u, u_input.a & firstLeadingBit(countOneBits(1u)));
    let var_3 = any(!vec4<bool>(true, true && !var_0, arg_1.a.x != -20488i, var_0));
    let var_4 = arg_1;
    return any(select(vec4<bool>(any(arg_2.yx), !(var_1 == -1065f), var_4.b < -15459i, !arg_2.x || false), vec4<bool>(false, arg_2.x, !(false || var_0), var_0), var_0));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = 30472u;
    var_0 = u_input.a >> (~_wgslsmith_add_u32(u_input.b.x, u_input.a) % 32u);
    var_0 = u_input.b.x;
    let var_1 = u_input.a;
    let var_2 = func_3(arg_1, Struct_1(vec2<i32>(~26250i, arg_1.a.x), (-1i << (0u % 32u)) << (~var_1 % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f - -1073f))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)) | false;
    return vec2<bool>(any(!select(vec3<bool>(var_2, true, true), vec3<bool>(var_2, true, var_2), !vec3<bool>(var_2, true, true))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_2, false))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, 2147483647i << (u_input.a % 32u)), 0i), vec2<i32>(arg_3.b, ~arg_3.b)), arg_3.a.x, arg_0.x);
    let var_1 = arg_3;
    let var_2 = abs(arg_3.a.x);
    var var_3 = vec2<bool>(true, true);
    var_3 = !arg_1;
    return _wgslsmith_f_op_f32(-arg_3.c);
}

fn func_1() -> Struct_1 {
    var var_0 = all(!vec2<bool>(false, any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 1216f, -542f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, 653f, -1353f))), vec3<bool>(true, true, true))), !select(select(vec2<bool>(true, true), func_2(222f, Struct_1(vec2<i32>(2147483647i, 0i), 1i, 1502f)), all(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), func_2(_wgslsmith_f_op_f32(-497f + -192f), Struct_1(vec2<i32>(12241i, 0i), -1i, -297f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f * -1000f) - _wgslsmith_f_op_f32(-961f + -1130f))), 1f), Struct_1(-countOneBits(vec2<i32>(0i, 7393i)), ~(~_wgslsmith_sub_i32(2147483647i, 2147483647i)), -407f)));
    var var_2 = _wgslsmith_f_op_f32(478f - _wgslsmith_div_f32(890f, 160f));
    var var_3 = vec4<i32>(i32(-1i) * -4000i, 1i, -4160i, ~_wgslsmith_mult_i32(0i, -20874i >> (u_input.b.x % 32u)));
    return Struct_1(var_3.xw, -abs(38169i), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(var_0.a, 25999i, 270f);
    let var_2 = func_1();
    var var_3 = 4329i;
    var_3 = var_1.b;
    var_3 = min(~(-var_1.b & _wgslsmith_clamp_i32(~var_0.b, _wgslsmith_mod_i32(var_2.a.x, -18049i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, -2147483647i, -13768i), vec3<i32>(-2147483647i, var_1.b, 1i)))), _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 0i, var_1.a.x), vec3<i32>(0i, 61206i, var_0.b)) ^ -abs(var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), 364f, _wgslsmith_f_op_f32(trunc(var_1.c))))));
}

