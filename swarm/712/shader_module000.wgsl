struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<f32> {
    global0 = (i32(-1i) * -countOneBits(2147483647i)) | (max((i32(-1i) * -2147483647i) ^ u_input.c.x, _wgslsmith_add_i32(2147483647i, u_input.b.x) << (0u % 32u)) & u_input.e.x);
    var var_0 = ~u_input.d;
    var var_1 = Struct_1(u_input.a, firstLeadingBit(u_input.a));
    var_0 = var_1.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(446f * _wgslsmith_f_op_f32(step(-887f, -237f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(362f, _wgslsmith_f_op_f32(step(411f, -110f)), true)) * 1f)));
    return vec2<f32>(-1078f, _wgslsmith_f_op_f32(trunc(var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    return firstLeadingBit(firstTrailingBit(~_wgslsmith_mult_i32(u_input.b.x, 2147483647i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = -_wgslsmith_mod_i32(abs(0i), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2, 1i), min(1i, u_input.b.x)));
    global0 = _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(-6202i, i32(-1i) * -46466i)), arg_2);
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = ~0i ^ firstTrailingBit(func_4(var_1, _wgslsmith_div_i32(-1i, -10225i), _wgslsmith_f_op_vec2_f32(func_3())));
    return arg_1.e;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, arg_1.a), vec2<u32>(arg_0, arg_1.b), true), reverseBits(vec2<u32>(u_input.d, arg_1.b))), vec2<u32>(_wgslsmith_mod_u32(arg_1.b, 30225u), _wgslsmith_div_u32(arg_0, 42651u))));
    global0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1477f, -583f, 385f, 783f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1245f, 410f, -1000f, -277f), vec4<f32>(-229f, 385f, 386f, -262f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 1000f, 777f, -1274f)) + _wgslsmith_div_vec4_f32(vec4<f32>(237f, 1000f, 863f, -709f), vec4<f32>(237f, -3306f, -323f, -1443f)))))));
    let var_2 = Struct_2(var_1, var_1.x, vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, 6846u), vec4<u32>(var_0.x, 4294967295u, 1u, arg_1.a)), vec4<u32>(arg_0, u_input.d, 56552u, var_0.x) << (vec4<u32>(0u, arg_0, 1u, arg_1.a) % vec4<u32>(32u))), abs(4294967295u) & arg_0, var_0.x, ~(~14190u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(84376u, u_input.a, arg_1.b), vec3<u32>(4294967295u, 20677u, var_0.x)), ~(~vec3<u32>(var_0.x, arg_0, u_input.a)))), Struct_1(min(arg_0, _wgslsmith_mult_u32(u_input.a, 1u)) | _wgslsmith_mult_u32(~u_input.a, 5356u), 0u));
    let var_3 = func_2(any(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, true)) != false, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))), var_2, u_input.c.x >> (var_0.x % 32u), var_2.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, var_1.x, 232f, var_1.x), var_1, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b, 113f, 1007f, -408f)))))) - var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    var var_0 = -197f;
    var var_1 = ~41220u;
    let var_2 = Struct_1(abs(max(~firstTrailingBit(1u), _wgslsmith_add_u32(4294967295u, firstTrailingBit(u_input.a)))), u_input.d);
    var_1 = var_2.a;
    var_1 = 10160u;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_1(1u, Struct_1(var_2.b, firstTrailingBit(u_input.d))));
    global0 = 45086i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_3.x)), vec2<i32>(~u_input.b.x ^ (u_input.c.x & _wgslsmith_div_i32(u_input.b.x, 70094i)), i32(-1i) * -(u_input.c.x | 33039i)), vec2<u32>(40452u | _wgslsmith_add_u32(15384u, u_input.d ^ var_2.b), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 34987u, var_2.a, 5487u), vec4<u32>(23929u, u_input.a, 4294967295u, 58113u)), vec4<u32>(u_input.d, 29708u, 35858u, 0u)), select(abs(5933u), min(0u, 28810u), false))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d << (var_2.b % 32u), ~select(41531u, 4294967295u, false), var_2.a), _wgslsmith_sub_vec3_u32(max(abs(vec3<u32>(u_input.d, 21377u, 37549u)), ~vec3<u32>(var_2.b, 20511u, 0u)), select(~vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(16529u, 1u, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), ~vec3<u32>(var_2.a, var_2.b >> (u_input.d % 32u), _wgslsmith_div_u32(u_input.a, var_2.a))));
}

