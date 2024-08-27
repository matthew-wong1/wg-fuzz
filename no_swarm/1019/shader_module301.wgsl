struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
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

var<private> global0: vec2<f32> = vec2<f32>(-1479f, -895f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global0 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1569f)), global0.x)) - _wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = Struct_2(abs(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 0i), _wgslsmith_div_vec3_i32(u_input.c, arg_3.d))));
    var_1 = Struct_2(_wgslsmith_mod_vec3_i32(~var_1.a, vec3<i32>(arg_3.d.x & select(u_input.c.x, arg_3.d.x, arg_3.b.x), firstLeadingBit(~4069i), 1i)));
    let var_2 = var_1.a;
    return arg_3.a.x;
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(func_3(vec4<i32>(u_input.a.x, u_input.c.x, 0i, u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(525f, global0.x) * vec2<f32>(-1286f, global0.x)), vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(121782u, u_input.b, 33306u, u_input.b), vec2<bool>(true, true), 831f, u_input.d, false)), _wgslsmith_mod_u32(1u, 46451u)), vec2<u32>(~u_input.b, ~u_input.b) & vec2<u32>(1u, 1u)), ~reverseBits(~(~vec2<u32>(u_input.b, 2351u))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, -703f)));
    global0 = vec2<f32>(global0.x, 286f);
    var var_1 = true;
    let var_2 = Struct_3(!(!any(vec4<bool>(true, true, true, true))), firstTrailingBit(u_input.d.x), u_input.b, !(!(4294967295u <= u_input.b)));
    return Struct_5(Struct_1(vec4<u32>(1u, 29107u, ~(~u_input.b), u_input.b), !vec2<bool>(true, var_2.d), 560f, u_input.c, any(select(!vec4<bool>(var_2.d, false, var_2.d, false), select(vec4<bool>(false, true, var_2.d, var_2.a), vec4<bool>(true, var_2.a, false, false), var_2.a), var_2.b < -2147483647i))), true);
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, -119f))))), vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), -195f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-115f, 679f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x)), select(select(vec2<bool>(arg_0.d, true), !vec2<bool>(false, arg_0.a), arg_0.a), !select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), arg_0.d), select(any(vec2<bool>(true, arg_0.d)), true, arg_0.a || false))))));
    let var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(129f)) - -437f), _wgslsmith_f_op_f32(global0.x + 1540f), 1006f);
    let var_1 = vec4<u32>(0u | ~arg_0.c, ~_wgslsmith_sub_u32(u_input.b, firstLeadingBit(~4294967295u)), 0u, _wgslsmith_dot_vec2_u32(abs(max(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(20076u, 4294967295u), vec2<u32>(u_input.b, 1u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(30182u, arg_0.c, 49023u, 20871u)), ~(u_input.b ^ 0u))));
    var var_2 = func_2();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.xw))));
    return firstLeadingBit(max(~(select(var_2.a.d.x, arg_0.b, false) << (0u % 32u)), var_2.a.d.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    var var_0 = ~80219u | u_input.b;
    var_0 = u_input.b;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.x, u_input.d.x, arg_0), firstTrailingBit(arg_1.a));
    let var_2 = -36870i;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(global0.x, global0.x))))));
    return vec2<f32>(func_2().a.c, _wgslsmith_f_op_f32(sign(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i, u_input.c.x, u_input.a.x) >> (vec3<u32>(u_input.b, 53068u, 1472u) % vec3<u32>(32u))), u_input.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(121f, _wgslsmith_f_op_f32(f32(-1f) * -1514f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_3(false, -2793i, 23988u, true)), Struct_2(u_input.c), false))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1017f, 1017f), vec2<f32>(global0.x, global0.x), vec2<bool>(true, false)))))))));
    var var_3 = _wgslsmith_f_op_f32(sign(func_2().a.c));
    var_1 = Struct_2(var_1.a);
    var var_4 = func_1(Struct_3(true, 23414i, 1600u, !(!(u_input.b == 39716u))));
    let var_5 = Struct_2(-firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(38490i, 26948i, var_1.a.x) ^ u_input.d, func_2().a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 422f))))));
}

