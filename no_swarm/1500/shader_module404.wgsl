struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(779f * _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x)), -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f - _wgslsmith_f_op_f32(-arg_1.c.x)) + -727f));
    let var_1 = 1i;
    global0 = false;
    let var_2 = all(select(vec4<bool>(true, false, all(!vec3<bool>(arg_2.a.b.x, true, false)), true), arg_2.d, arg_1.b.d));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(arg_2.c.a.x ^ _wgslsmith_mod_i32(arg_2.a.a.x, -44925i), -_wgslsmith_div_i32(-13651i, 8409i))), -(-vec2<i32>(arg_1.b.a.a.x, var_1) | -vec2<i32>(-1i, arg_1.b.c.a.x)) ^ arg_1.a.yx);
    return 2147483647i & ~countOneBits(select(var_3.x, arg_1.d.a.x, true) >> (79015u % 32u));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~max(~((vec3<u32>(31031u, u_input.a.x, 12650u) | vec3<u32>(4294967295u, 1u, u_input.a.x)) << (vec3<u32>(u_input.a.x, 0u, 37533u) % vec3<u32>(32u))), ~(~vec3<u32>(11561u, 4294967295u, arg_0)));
    var var_1 = vec2<bool>(!(!(_wgslsmith_f_op_f32(ceil(-581f)) < _wgslsmith_f_op_f32(-406f + 326f))), any(vec3<bool>(1f != _wgslsmith_f_op_f32(step(297f, -571f)), true || any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true)))));
    var var_2 = 1i;
    let var_3 = Struct_1(vec4<i32>(1i, 1i, 1i, 1i), select(vec3<bool>(!select(false, true, var_1.x), false, all(!vec3<bool>(var_1.x, false, false))), select(vec3<bool>(select(var_1.x, true, true), var_1.x, var_1.x), vec3<bool>(select(var_1.x, var_1.x, true), true, true), (true | var_1.x) && all(vec2<bool>(true, true))), !(!(!vec3<bool>(false, false, var_1.x)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-278f, 533f)))))), -1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(508f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(117f, -684f)))))));
    return -19322i;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = false;
    let var_0 = 2457f;
    let var_1 = ~vec2<u32>(~(countOneBits(u_input.a.x) >> (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u)), u_input.a.x);
    let var_2 = Struct_3(vec4<i32>(arg_0.a.x, -(~13670i), ~(~func_2(vec2<u32>(u_input.a.x, var_1.x), Struct_3(arg_0.a, Struct_2(Struct_1(vec4<i32>(1i, 89629i, arg_0.a.x, -30200i), arg_0.b), Struct_1(arg_0.a, arg_0.b), arg_0, vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x)), vec2<f32>(var_0, -432f), arg_0), Struct_2(Struct_1(arg_0.a, arg_0.b), Struct_1(vec4<i32>(0i, 2147483647i, arg_0.a.x, -2147483647i), vec3<bool>(arg_0.b.x, false, arg_0.b.x)), Struct_1(arg_0.a, arg_0.b), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x)), u_input.a.x)), min(func_3(var_1.x) & ~arg_0.a.x, _wgslsmith_mult_i32(arg_0.a.x, -arg_0.a.x))), Struct_2(Struct_1(arg_0.a, !(!vec3<bool>(arg_0.b.x, arg_0.b.x, false))), arg_0, Struct_1(vec4<i32>(1i & arg_0.a.x, abs(-26714i), 2147483647i, -1394i), select(select(arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b.x), true)), vec4<bool>(arg_0.b.x, false, true, false)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 315f)) - vec2<f32>(var_0, 689f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 936f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2288f, -107f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1397f), vec2<f32>(264f, -702f), !vec2<bool>(arg_0.b.x, true))))))), arg_0);
    global1 = !(!(~u_input.a.x < (4294967295u >> (u_input.a.x % 32u)))) || all(vec4<bool>((arg_0.a.x ^ arg_0.a.x) >= _wgslsmith_dot_vec3_i32(arg_0.a.yyz, arg_0.a.wyx), true, !arg_0.b.x, select(true | arg_0.b.x, true, any(var_2.d.b.zy))));
    return Struct_1(_wgslsmith_sub_vec4_i32(abs(abs(vec4<i32>(arg_0.a.x, arg_0.a.x, var_2.d.a.x, var_2.b.b.a.x) ^ var_2.a)), _wgslsmith_mod_vec4_i32(select(arg_0.a >> (vec4<u32>(24985u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(var_2.a.x, arg_0.a.x, -1i, arg_0.a.x), var_2.b.d), var_2.d.a)), vec3<bool>(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(-1i) * -vec4<i32>(~0i, -42598i << (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -15725i, 13417i), vec4<i32>(-2147483647i, 1i, -26069i, -1391i)), _wgslsmith_sub_i32(-1i, 1i)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    var_0 = func_1(Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i, ~var_0.a.x), var_0.a.x, ~_wgslsmith_mod_i32(77751i, var_0.a.x), 0i), vec3<bool>(var_0.b.x, !(!var_0.b.x), all(select(vec4<bool>(var_0.b.x, var_0.b.x, false, false), vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec4<bool>(true, var_0.b.x, var_0.b.x, true))))), 1313f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(257f, -577f) * vec2<f32>(671f, 1000f))))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -875f))))))));
    global0 = true && (!var_0.b.x == true);
    var_0 = func_1(func_1(func_1(func_1(func_1(Struct_1(vec4<i32>(var_0.a.x, -1i, 1i, var_0.a.x), var_0.b), var_1.x), var_1.x), var_1.x), -133f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x), all(!(!var_0.b)))));
    let var_2 = true;
    var_0 = func_1(Struct_1(var_0.a, var_0.b), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1279f))))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_f32(-var_1.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(765f - var_1.x)));
}

