struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 152f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = firstTrailingBit(u_input.a.xw);
    var_0 = vec2<u32>(95783u, ~max(~(var_0.x >> (u_input.a.x % 32u)), ~u_input.a.x & _wgslsmith_add_u32(6316u, var_0.x)));
    var_0 = _wgslsmith_clamp_vec2_u32(u_input.b.yy, u_input.a.wx, _wgslsmith_mult_vec2_u32(select(abs(vec2<u32>(var_0.x, u_input.b.x)), u_input.b.wy, vec2<bool>(false, true)), ~(~vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_1 = select(67511u, var_0.x, true);
    var_1 = min(_wgslsmith_mod_u32(u_input.a.x, var_0.x), min(u_input.b.x, 27847u) | var_0.x);
    return select(!select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), 0i >= u_input.c.x), vec4<bool>(true, true, true, true), vec4<bool>(-2147483647i == u_input.c.x, true, true, true)), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false))), select(vec4<bool>(!select(false, true, true), true, all(vec3<bool>(true, false, false)), true), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), ((u_input.a.x < var_0.x) | true) & true));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(select(vec4<bool>(true, arg_3.a.x && (global1.x != global1.x), arg_3.a.x, true), func_3(), vec4<bool>(arg_3.a.x, true, false, false)), -1i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(arg_3.c, 0i) >> (~arg_2 % 32u), -649i), firstTrailingBit(_wgslsmith_add_vec3_u32(~arg_3.d, u_input.b.xzx)) & vec3<u32>(28569u, arg_1.x, ~arg_2 | ~u_input.b.x));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1431f * -554f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1565f)))))));
    let var_1 = arg_3;
    global0 = _wgslsmith_dot_vec3_i32(-min(max(vec3<i32>(-12266i, var_1.c, -1i), u_input.c.zyy) << (vec3<u32>(var_0.d.x, 23167u, arg_3.d.x) % vec3<u32>(32u)), ~vec3<i32>(-63873i, var_0.b, 7889i)), abs(u_input.c.ywy));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(123f, global1.x) + vec2<f32>(188f, 1444f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 459f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(462f, -486f) * vec2<f32>(-1800f, -1616f)), vec2<f32>(global1.x, global1.x), true))))));
    return _wgslsmith_add_i32(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(2147483647i, u_input.c.x, arg_3.c) << (firstTrailingBit(arg_2 >> (var_0.d.x % 32u)) % 32u), 2147483647i), _wgslsmith_add_i32(var_0.c, 0i) | min(~_wgslsmith_div_i32(arg_3.b, -11825i), -1i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -169f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 225f, !arg_2.a.x))) - arg_3.xz) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x))))));
    var var_0 = Struct_1(arg_2.a, select(_wgslsmith_dot_vec3_i32(u_input.c.yyy, u_input.c.wxy | ~u_input.c.www), abs(-2147483647i), arg_1.a.x), -2147483647i, vec3<u32>(~(~arg_2.d.x), arg_1.d.x, arg_2.d.x) | vec3<u32>(~arg_2.d.x, (4294967295u & u_input.a.x) & 4294967295u, 0u));
    var_0 = arg_1;
    var var_1 = arg_0;
    let var_2 = arg_3.zy;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1477f, var_2.x)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(func_4(~35561i, Struct_1(vec4<bool>(true, false, false, true), func_2(vec3<bool>(true, false, true), u_input.a.xxy, 0u, Struct_1(vec4<bool>(true, false, false, false), 54998i, 31522i, u_input.b.zzz)), u_input.c.x, vec3<u32>(0u, var_0, 73456u) << (u_input.b.wxx % vec3<u32>(32u))), Struct_1(vec4<bool>(true, true, true, true), countOneBits(1i), u_input.c.x ^ arg_0, ~u_input.a.zwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, arg_2, -2237f)))))));
    var var_2 = select(select(vec2<bool>(global1.x < -188f, any(vec4<bool>(true, true, true, true))), vec2<bool>(any(func_3()), true), true), vec2<bool>(false, !any(vec2<bool>(true, true))), select(vec2<bool>(true, true), !func_3().yy, all(select(vec4<bool>(true, true, true, true), func_3(), vec4<bool>(false, false, true, true)))));
    var var_3 = u_input.a;
    var var_4 = select(func_3().yxz, vec3<bool>(all(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(false, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), false, var_2.x), select(var_2.x, var_2.x, false));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 25643i;
    var_0 = func_1(u_input.c.x, u_input.a.x, global1.x);
    let var_1 = 1u;
    var var_2 = vec2<bool>(true, !(!all(func_3())));
    var_0 = ~(i32(-1i) * -_wgslsmith_div_i32(-6566i, u_input.c.x));
    let var_3 = Struct_1(select(func_3(), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_2.x, var_2.x, true), global1.x > global1.x), var_2.x), !(!var_2.x)), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(select(1i, 1i, var_2.x), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), -18699i), _wgslsmith_mod_i32(u_input.c.x, abs(u_input.c.x))), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(select(u_input.c.x, -2147483647i, false), -u_input.c.x), u_input.c.x, -u_input.c.x), (select(vec3<u32>(var_1, u_input.a.x, var_1), u_input.b.wwz ^ vec3<u32>(u_input.a.x, 15679u, 1u), any(vec4<bool>(false, var_2.x, var_2.x, var_2.x))) & vec3<u32>(~var_1, ~var_1, ~24788u)) | vec3<u32>(var_1, _wgslsmith_dot_vec4_u32(u_input.a, select(vec4<u32>(u_input.a.x, 89993u, var_1, var_1), u_input.a, var_2.x)), countOneBits(46550u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.zx);
}

