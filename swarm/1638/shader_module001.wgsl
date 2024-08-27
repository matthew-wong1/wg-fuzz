struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = Struct_1(global0.a, -23546i);
    var var_0 = global0.b;
    let var_1 = ~u_input.a.x;
    global0 = Struct_1(global0.a, ~global0.b);
    global0 = Struct_1(all(vec3<bool>(true, true, true)), abs(~(-10022i) | -_wgslsmith_sub_i32(global0.b, global0.b)));
    return -20086i;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    global0 = Struct_1(global0.a, ~reverseBits(-1i << (~u_input.a.x % 32u)));
    global0 = Struct_1(global0.a, arg_1.x & (arg_1.x & ~global0.b));
    global0 = Struct_1(all(!vec4<bool>(true, select(global0.a, global0.a, arg_3), true, select(arg_3, false, arg_3))), global0.b);
    var var_0 = Struct_3(-908f);
    global0 = Struct_1(true, _wgslsmith_add_i32(func_3(), _wgslsmith_mult_i32(-27190i, -(i32(-1i) * -54298i))));
    return _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1286f)), var_0.a))), _wgslsmith_f_op_f32(1323f * -1823f))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    global0 = Struct_1(arg_2.a, global0.b);
    let var_0 = vec3<i32>(arg_2.b.b, 0i, 1i);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(arg_2.c, 7685u), vec2<i32>(47592i, global0.b), reverseBits(vec4<u32>(20277u, u_input.a.x, 0u, 68755u)), true)) - 851f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-439f - _wgslsmith_f_op_f32(abs(1112f))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.a, vec2<i32>(1i, 2147483647i), vec4<u32>(u_input.a.x, 1u, 32731u, u_input.a.x), global0.a)), _wgslsmith_f_op_f32(362f + -1085f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(280f - 408f)))));
    return vec2<bool>(!(~_wgslsmith_mult_u32(u_input.a.x, arg_2.c) <= (u_input.a.x << (1u % 32u))), arg_3 < min(~(i32(-1i) * -13952i), func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.a, global0.a | any(func_1(-1i, true, Struct_2(false, Struct_1(global0.a, global0.b), 18369u), 1i)));
    global0 = Struct_1(all(vec4<bool>(any(vec4<bool>(true, false, true, var_0.x)), var_0.x, true | global0.a, func_1(global0.b, false, Struct_2(true, Struct_1(false, global0.b), 1u), global0.b).x)) | true, abs(_wgslsmith_mult_i32(firstTrailingBit(-64898i), -1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.b, global0.b), vec3<i32>(global0.b, 1192i, 24856i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(913f, -953f, 1069f), vec3<f32>(651f, 613f, 884f)))) - vec3<f32>(-537f, 336f, -856f))));
    let var_2 = Struct_1(true, global0.b);
    let var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(359f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 2426f))));
    var var_4 = var_2.a;
    var var_5 = 537f;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1817f, var_3), vec3<f32>(-659f, -1237f, var_3)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(913f, var_3, var_3)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1441f, var_1.x, -1508f) * vec3<f32>(var_1.x, var_1.x, var_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_3)), vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, 251f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1006f, var_1.x, var_3)))) - vec3<f32>(var_1.x, -1713f, -2088f))));
    let var_6 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1482f, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(var_1.x + 745f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2386f, 415f, var_3), vec3<f32>(1177f, -1091f, var_3))))));
}

